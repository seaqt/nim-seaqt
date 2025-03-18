import ./qtwidgets_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_miqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newString(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


{.compile("gen_qgesture.cpp", QtWidgetsCFlags).}


type QGestureGestureCancelPolicyEnum* = distinct cint
template CancelNone*(_: type QGestureGestureCancelPolicyEnum): untyped = 0
template CancelAllInContext*(_: type QGestureGestureCancelPolicyEnum): untyped = 1


type QPinchGestureChangeFlagEnum* = distinct cint
template ScaleFactorChanged*(_: type QPinchGestureChangeFlagEnum): untyped = 1
template RotationAngleChanged*(_: type QPinchGestureChangeFlagEnum): untyped = 2
template CenterPointChanged*(_: type QPinchGestureChangeFlagEnum): untyped = 4


type QSwipeGestureSwipeDirectionEnum* = distinct cint
template NoDirection*(_: type QSwipeGestureSwipeDirectionEnum): untyped = 0
template Left*(_: type QSwipeGestureSwipeDirectionEnum): untyped = 1
template Right*(_: type QSwipeGestureSwipeDirectionEnum): untyped = 2
template Up*(_: type QSwipeGestureSwipeDirectionEnum): untyped = 3
template Down*(_: type QSwipeGestureSwipeDirectionEnum): untyped = 4


import ./gen_qgesture_types
export gen_qgesture_types

import
  ../QtCore/gen_qcoreevent,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ./gen_qwidget_types
export
  gen_qcoreevent,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qwidget_types

type cQGesture*{.exportc: "QGesture", incompleteStruct.} = object
type cQPanGesture*{.exportc: "QPanGesture", incompleteStruct.} = object
type cQPinchGesture*{.exportc: "QPinchGesture", incompleteStruct.} = object
type cQSwipeGesture*{.exportc: "QSwipeGesture", incompleteStruct.} = object
type cQTapGesture*{.exportc: "QTapGesture", incompleteStruct.} = object
type cQTapAndHoldGesture*{.exportc: "QTapAndHoldGesture", incompleteStruct.} = object
type cQGestureEvent*{.exportc: "QGestureEvent", incompleteStruct.} = object

proc fcQGesture_metaObject(self: pointer): pointer {.importc: "QGesture_metaObject".}
proc fcQGesture_metacast(self: pointer, param1: cstring): pointer {.importc: "QGesture_metacast".}
proc fcQGesture_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGesture_metacall".}
proc fcQGesture_tr(s: cstring): struct_miqt_string {.importc: "QGesture_tr".}
proc fcQGesture_trUtf8(s: cstring): struct_miqt_string {.importc: "QGesture_trUtf8".}
proc fcQGesture_gestureType(self: pointer): cint {.importc: "QGesture_gestureType".}
proc fcQGesture_state(self: pointer): cint {.importc: "QGesture_state".}
proc fcQGesture_hotSpot(self: pointer): pointer {.importc: "QGesture_hotSpot".}
proc fcQGesture_setHotSpot(self: pointer, value: pointer): void {.importc: "QGesture_setHotSpot".}
proc fcQGesture_hasHotSpot(self: pointer): bool {.importc: "QGesture_hasHotSpot".}
proc fcQGesture_unsetHotSpot(self: pointer): void {.importc: "QGesture_unsetHotSpot".}
proc fcQGesture_setGestureCancelPolicy(self: pointer, policy: cint): void {.importc: "QGesture_setGestureCancelPolicy".}
proc fcQGesture_gestureCancelPolicy(self: pointer): cint {.importc: "QGesture_gestureCancelPolicy".}
proc fcQGesture_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGesture_tr2".}
proc fcQGesture_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGesture_tr3".}
proc fcQGesture_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGesture_trUtf82".}
proc fcQGesture_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGesture_trUtf83".}
proc fcQGesture_vtbl(self: pointer): pointer {.importc: "QGesture_vtbl".}
proc fcQGesture_vdata(self: pointer): pointer {.importc: "QGesture_vdata".}

type cQGestureVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQGesture_virtualbase_metaObject(self: pointer): pointer {.importc: "QGesture_virtualbase_metaObject".}
proc fcQGesture_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QGesture_virtualbase_metacast".}
proc fcQGesture_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGesture_virtualbase_metacall".}
proc fcQGesture_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QGesture_virtualbase_event".}
proc fcQGesture_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGesture_virtualbase_eventFilter".}
proc fcQGesture_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QGesture_virtualbase_timerEvent".}
proc fcQGesture_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QGesture_virtualbase_childEvent".}
proc fcQGesture_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QGesture_virtualbase_customEvent".}
proc fcQGesture_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QGesture_virtualbase_connectNotify".}
proc fcQGesture_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QGesture_virtualbase_disconnectNotify".}
proc fcQGesture_protectedbase_sender(self: pointer): pointer {.importc: "QGesture_protectedbase_sender".}
proc fcQGesture_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QGesture_protectedbase_senderSignalIndex".}
proc fcQGesture_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QGesture_protectedbase_receivers".}
proc fcQGesture_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QGesture_protectedbase_isSignalConnected".}
proc fcQGesture_new(vtbl, vdata: pointer): ptr cQGesture {.importc: "QGesture_new".}
proc fcQGesture_new2(vtbl, vdata: pointer, parent: pointer): ptr cQGesture {.importc: "QGesture_new2".}
proc fcQGesture_staticMetaObject(): pointer {.importc: "QGesture_staticMetaObject".}
proc fcQPanGesture_metaObject(self: pointer): pointer {.importc: "QPanGesture_metaObject".}
proc fcQPanGesture_metacast(self: pointer, param1: cstring): pointer {.importc: "QPanGesture_metacast".}
proc fcQPanGesture_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPanGesture_metacall".}
proc fcQPanGesture_tr(s: cstring): struct_miqt_string {.importc: "QPanGesture_tr".}
proc fcQPanGesture_trUtf8(s: cstring): struct_miqt_string {.importc: "QPanGesture_trUtf8".}
proc fcQPanGesture_lastOffset(self: pointer): pointer {.importc: "QPanGesture_lastOffset".}
proc fcQPanGesture_offset(self: pointer): pointer {.importc: "QPanGesture_offset".}
proc fcQPanGesture_delta(self: pointer): pointer {.importc: "QPanGesture_delta".}
proc fcQPanGesture_acceleration(self: pointer): float64 {.importc: "QPanGesture_acceleration".}
proc fcQPanGesture_setLastOffset(self: pointer, value: pointer): void {.importc: "QPanGesture_setLastOffset".}
proc fcQPanGesture_setOffset(self: pointer, value: pointer): void {.importc: "QPanGesture_setOffset".}
proc fcQPanGesture_setAcceleration(self: pointer, value: float64): void {.importc: "QPanGesture_setAcceleration".}
proc fcQPanGesture_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPanGesture_tr2".}
proc fcQPanGesture_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPanGesture_tr3".}
proc fcQPanGesture_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QPanGesture_trUtf82".}
proc fcQPanGesture_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPanGesture_trUtf83".}
proc fcQPanGesture_vtbl(self: pointer): pointer {.importc: "QPanGesture_vtbl".}
proc fcQPanGesture_vdata(self: pointer): pointer {.importc: "QPanGesture_vdata".}

type cQPanGestureVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQPanGesture_virtualbase_metaObject(self: pointer): pointer {.importc: "QPanGesture_virtualbase_metaObject".}
proc fcQPanGesture_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QPanGesture_virtualbase_metacast".}
proc fcQPanGesture_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPanGesture_virtualbase_metacall".}
proc fcQPanGesture_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QPanGesture_virtualbase_event".}
proc fcQPanGesture_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QPanGesture_virtualbase_eventFilter".}
proc fcQPanGesture_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QPanGesture_virtualbase_timerEvent".}
proc fcQPanGesture_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QPanGesture_virtualbase_childEvent".}
proc fcQPanGesture_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QPanGesture_virtualbase_customEvent".}
proc fcQPanGesture_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QPanGesture_virtualbase_connectNotify".}
proc fcQPanGesture_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QPanGesture_virtualbase_disconnectNotify".}
proc fcQPanGesture_protectedbase_sender(self: pointer): pointer {.importc: "QPanGesture_protectedbase_sender".}
proc fcQPanGesture_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QPanGesture_protectedbase_senderSignalIndex".}
proc fcQPanGesture_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QPanGesture_protectedbase_receivers".}
proc fcQPanGesture_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QPanGesture_protectedbase_isSignalConnected".}
proc fcQPanGesture_new(vtbl, vdata: pointer): ptr cQPanGesture {.importc: "QPanGesture_new".}
proc fcQPanGesture_new2(vtbl, vdata: pointer, parent: pointer): ptr cQPanGesture {.importc: "QPanGesture_new2".}
proc fcQPanGesture_staticMetaObject(): pointer {.importc: "QPanGesture_staticMetaObject".}
proc fcQPinchGesture_metaObject(self: pointer): pointer {.importc: "QPinchGesture_metaObject".}
proc fcQPinchGesture_metacast(self: pointer, param1: cstring): pointer {.importc: "QPinchGesture_metacast".}
proc fcQPinchGesture_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPinchGesture_metacall".}
proc fcQPinchGesture_tr(s: cstring): struct_miqt_string {.importc: "QPinchGesture_tr".}
proc fcQPinchGesture_trUtf8(s: cstring): struct_miqt_string {.importc: "QPinchGesture_trUtf8".}
proc fcQPinchGesture_totalChangeFlags(self: pointer): cint {.importc: "QPinchGesture_totalChangeFlags".}
proc fcQPinchGesture_setTotalChangeFlags(self: pointer, value: cint): void {.importc: "QPinchGesture_setTotalChangeFlags".}
proc fcQPinchGesture_changeFlags(self: pointer): cint {.importc: "QPinchGesture_changeFlags".}
proc fcQPinchGesture_setChangeFlags(self: pointer, value: cint): void {.importc: "QPinchGesture_setChangeFlags".}
proc fcQPinchGesture_startCenterPoint(self: pointer): pointer {.importc: "QPinchGesture_startCenterPoint".}
proc fcQPinchGesture_lastCenterPoint(self: pointer): pointer {.importc: "QPinchGesture_lastCenterPoint".}
proc fcQPinchGesture_centerPoint(self: pointer): pointer {.importc: "QPinchGesture_centerPoint".}
proc fcQPinchGesture_setStartCenterPoint(self: pointer, value: pointer): void {.importc: "QPinchGesture_setStartCenterPoint".}
proc fcQPinchGesture_setLastCenterPoint(self: pointer, value: pointer): void {.importc: "QPinchGesture_setLastCenterPoint".}
proc fcQPinchGesture_setCenterPoint(self: pointer, value: pointer): void {.importc: "QPinchGesture_setCenterPoint".}
proc fcQPinchGesture_totalScaleFactor(self: pointer): float64 {.importc: "QPinchGesture_totalScaleFactor".}
proc fcQPinchGesture_lastScaleFactor(self: pointer): float64 {.importc: "QPinchGesture_lastScaleFactor".}
proc fcQPinchGesture_scaleFactor(self: pointer): float64 {.importc: "QPinchGesture_scaleFactor".}
proc fcQPinchGesture_setTotalScaleFactor(self: pointer, value: float64): void {.importc: "QPinchGesture_setTotalScaleFactor".}
proc fcQPinchGesture_setLastScaleFactor(self: pointer, value: float64): void {.importc: "QPinchGesture_setLastScaleFactor".}
proc fcQPinchGesture_setScaleFactor(self: pointer, value: float64): void {.importc: "QPinchGesture_setScaleFactor".}
proc fcQPinchGesture_totalRotationAngle(self: pointer): float64 {.importc: "QPinchGesture_totalRotationAngle".}
proc fcQPinchGesture_lastRotationAngle(self: pointer): float64 {.importc: "QPinchGesture_lastRotationAngle".}
proc fcQPinchGesture_rotationAngle(self: pointer): float64 {.importc: "QPinchGesture_rotationAngle".}
proc fcQPinchGesture_setTotalRotationAngle(self: pointer, value: float64): void {.importc: "QPinchGesture_setTotalRotationAngle".}
proc fcQPinchGesture_setLastRotationAngle(self: pointer, value: float64): void {.importc: "QPinchGesture_setLastRotationAngle".}
proc fcQPinchGesture_setRotationAngle(self: pointer, value: float64): void {.importc: "QPinchGesture_setRotationAngle".}
proc fcQPinchGesture_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPinchGesture_tr2".}
proc fcQPinchGesture_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPinchGesture_tr3".}
proc fcQPinchGesture_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QPinchGesture_trUtf82".}
proc fcQPinchGesture_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPinchGesture_trUtf83".}
proc fcQPinchGesture_vtbl(self: pointer): pointer {.importc: "QPinchGesture_vtbl".}
proc fcQPinchGesture_vdata(self: pointer): pointer {.importc: "QPinchGesture_vdata".}

type cQPinchGestureVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQPinchGesture_virtualbase_metaObject(self: pointer): pointer {.importc: "QPinchGesture_virtualbase_metaObject".}
proc fcQPinchGesture_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QPinchGesture_virtualbase_metacast".}
proc fcQPinchGesture_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPinchGesture_virtualbase_metacall".}
proc fcQPinchGesture_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QPinchGesture_virtualbase_event".}
proc fcQPinchGesture_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QPinchGesture_virtualbase_eventFilter".}
proc fcQPinchGesture_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QPinchGesture_virtualbase_timerEvent".}
proc fcQPinchGesture_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QPinchGesture_virtualbase_childEvent".}
proc fcQPinchGesture_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QPinchGesture_virtualbase_customEvent".}
proc fcQPinchGesture_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QPinchGesture_virtualbase_connectNotify".}
proc fcQPinchGesture_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QPinchGesture_virtualbase_disconnectNotify".}
proc fcQPinchGesture_protectedbase_sender(self: pointer): pointer {.importc: "QPinchGesture_protectedbase_sender".}
proc fcQPinchGesture_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QPinchGesture_protectedbase_senderSignalIndex".}
proc fcQPinchGesture_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QPinchGesture_protectedbase_receivers".}
proc fcQPinchGesture_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QPinchGesture_protectedbase_isSignalConnected".}
proc fcQPinchGesture_new(vtbl, vdata: pointer): ptr cQPinchGesture {.importc: "QPinchGesture_new".}
proc fcQPinchGesture_new2(vtbl, vdata: pointer, parent: pointer): ptr cQPinchGesture {.importc: "QPinchGesture_new2".}
proc fcQPinchGesture_staticMetaObject(): pointer {.importc: "QPinchGesture_staticMetaObject".}
proc fcQSwipeGesture_metaObject(self: pointer): pointer {.importc: "QSwipeGesture_metaObject".}
proc fcQSwipeGesture_metacast(self: pointer, param1: cstring): pointer {.importc: "QSwipeGesture_metacast".}
proc fcQSwipeGesture_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSwipeGesture_metacall".}
proc fcQSwipeGesture_tr(s: cstring): struct_miqt_string {.importc: "QSwipeGesture_tr".}
proc fcQSwipeGesture_trUtf8(s: cstring): struct_miqt_string {.importc: "QSwipeGesture_trUtf8".}
proc fcQSwipeGesture_horizontalDirection(self: pointer): cint {.importc: "QSwipeGesture_horizontalDirection".}
proc fcQSwipeGesture_verticalDirection(self: pointer): cint {.importc: "QSwipeGesture_verticalDirection".}
proc fcQSwipeGesture_swipeAngle(self: pointer): float64 {.importc: "QSwipeGesture_swipeAngle".}
proc fcQSwipeGesture_setSwipeAngle(self: pointer, value: float64): void {.importc: "QSwipeGesture_setSwipeAngle".}
proc fcQSwipeGesture_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSwipeGesture_tr2".}
proc fcQSwipeGesture_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSwipeGesture_tr3".}
proc fcQSwipeGesture_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSwipeGesture_trUtf82".}
proc fcQSwipeGesture_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSwipeGesture_trUtf83".}
proc fcQSwipeGesture_vtbl(self: pointer): pointer {.importc: "QSwipeGesture_vtbl".}
proc fcQSwipeGesture_vdata(self: pointer): pointer {.importc: "QSwipeGesture_vdata".}

type cQSwipeGestureVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQSwipeGesture_virtualbase_metaObject(self: pointer): pointer {.importc: "QSwipeGesture_virtualbase_metaObject".}
proc fcQSwipeGesture_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSwipeGesture_virtualbase_metacast".}
proc fcQSwipeGesture_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSwipeGesture_virtualbase_metacall".}
proc fcQSwipeGesture_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QSwipeGesture_virtualbase_event".}
proc fcQSwipeGesture_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSwipeGesture_virtualbase_eventFilter".}
proc fcQSwipeGesture_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSwipeGesture_virtualbase_timerEvent".}
proc fcQSwipeGesture_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSwipeGesture_virtualbase_childEvent".}
proc fcQSwipeGesture_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSwipeGesture_virtualbase_customEvent".}
proc fcQSwipeGesture_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSwipeGesture_virtualbase_connectNotify".}
proc fcQSwipeGesture_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSwipeGesture_virtualbase_disconnectNotify".}
proc fcQSwipeGesture_protectedbase_sender(self: pointer): pointer {.importc: "QSwipeGesture_protectedbase_sender".}
proc fcQSwipeGesture_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QSwipeGesture_protectedbase_senderSignalIndex".}
proc fcQSwipeGesture_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSwipeGesture_protectedbase_receivers".}
proc fcQSwipeGesture_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSwipeGesture_protectedbase_isSignalConnected".}
proc fcQSwipeGesture_new(vtbl, vdata: pointer): ptr cQSwipeGesture {.importc: "QSwipeGesture_new".}
proc fcQSwipeGesture_new2(vtbl, vdata: pointer, parent: pointer): ptr cQSwipeGesture {.importc: "QSwipeGesture_new2".}
proc fcQSwipeGesture_staticMetaObject(): pointer {.importc: "QSwipeGesture_staticMetaObject".}
proc fcQTapGesture_metaObject(self: pointer): pointer {.importc: "QTapGesture_metaObject".}
proc fcQTapGesture_metacast(self: pointer, param1: cstring): pointer {.importc: "QTapGesture_metacast".}
proc fcQTapGesture_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTapGesture_metacall".}
proc fcQTapGesture_tr(s: cstring): struct_miqt_string {.importc: "QTapGesture_tr".}
proc fcQTapGesture_trUtf8(s: cstring): struct_miqt_string {.importc: "QTapGesture_trUtf8".}
proc fcQTapGesture_position(self: pointer): pointer {.importc: "QTapGesture_position".}
proc fcQTapGesture_setPosition(self: pointer, pos: pointer): void {.importc: "QTapGesture_setPosition".}
proc fcQTapGesture_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTapGesture_tr2".}
proc fcQTapGesture_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTapGesture_tr3".}
proc fcQTapGesture_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QTapGesture_trUtf82".}
proc fcQTapGesture_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTapGesture_trUtf83".}
proc fcQTapGesture_vtbl(self: pointer): pointer {.importc: "QTapGesture_vtbl".}
proc fcQTapGesture_vdata(self: pointer): pointer {.importc: "QTapGesture_vdata".}

type cQTapGestureVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQTapGesture_virtualbase_metaObject(self: pointer): pointer {.importc: "QTapGesture_virtualbase_metaObject".}
proc fcQTapGesture_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QTapGesture_virtualbase_metacast".}
proc fcQTapGesture_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTapGesture_virtualbase_metacall".}
proc fcQTapGesture_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QTapGesture_virtualbase_event".}
proc fcQTapGesture_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QTapGesture_virtualbase_eventFilter".}
proc fcQTapGesture_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QTapGesture_virtualbase_timerEvent".}
proc fcQTapGesture_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QTapGesture_virtualbase_childEvent".}
proc fcQTapGesture_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QTapGesture_virtualbase_customEvent".}
proc fcQTapGesture_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QTapGesture_virtualbase_connectNotify".}
proc fcQTapGesture_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QTapGesture_virtualbase_disconnectNotify".}
proc fcQTapGesture_protectedbase_sender(self: pointer): pointer {.importc: "QTapGesture_protectedbase_sender".}
proc fcQTapGesture_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QTapGesture_protectedbase_senderSignalIndex".}
proc fcQTapGesture_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QTapGesture_protectedbase_receivers".}
proc fcQTapGesture_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QTapGesture_protectedbase_isSignalConnected".}
proc fcQTapGesture_new(vtbl, vdata: pointer): ptr cQTapGesture {.importc: "QTapGesture_new".}
proc fcQTapGesture_new2(vtbl, vdata: pointer, parent: pointer): ptr cQTapGesture {.importc: "QTapGesture_new2".}
proc fcQTapGesture_staticMetaObject(): pointer {.importc: "QTapGesture_staticMetaObject".}
proc fcQTapAndHoldGesture_metaObject(self: pointer): pointer {.importc: "QTapAndHoldGesture_metaObject".}
proc fcQTapAndHoldGesture_metacast(self: pointer, param1: cstring): pointer {.importc: "QTapAndHoldGesture_metacast".}
proc fcQTapAndHoldGesture_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTapAndHoldGesture_metacall".}
proc fcQTapAndHoldGesture_tr(s: cstring): struct_miqt_string {.importc: "QTapAndHoldGesture_tr".}
proc fcQTapAndHoldGesture_trUtf8(s: cstring): struct_miqt_string {.importc: "QTapAndHoldGesture_trUtf8".}
proc fcQTapAndHoldGesture_position(self: pointer): pointer {.importc: "QTapAndHoldGesture_position".}
proc fcQTapAndHoldGesture_setPosition(self: pointer, pos: pointer): void {.importc: "QTapAndHoldGesture_setPosition".}
proc fcQTapAndHoldGesture_setTimeout(msecs: cint): void {.importc: "QTapAndHoldGesture_setTimeout".}
proc fcQTapAndHoldGesture_timeout(): cint {.importc: "QTapAndHoldGesture_timeout".}
proc fcQTapAndHoldGesture_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTapAndHoldGesture_tr2".}
proc fcQTapAndHoldGesture_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTapAndHoldGesture_tr3".}
proc fcQTapAndHoldGesture_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QTapAndHoldGesture_trUtf82".}
proc fcQTapAndHoldGesture_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTapAndHoldGesture_trUtf83".}
proc fcQTapAndHoldGesture_vtbl(self: pointer): pointer {.importc: "QTapAndHoldGesture_vtbl".}
proc fcQTapAndHoldGesture_vdata(self: pointer): pointer {.importc: "QTapAndHoldGesture_vdata".}

type cQTapAndHoldGestureVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQTapAndHoldGesture_virtualbase_metaObject(self: pointer): pointer {.importc: "QTapAndHoldGesture_virtualbase_metaObject".}
proc fcQTapAndHoldGesture_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QTapAndHoldGesture_virtualbase_metacast".}
proc fcQTapAndHoldGesture_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTapAndHoldGesture_virtualbase_metacall".}
proc fcQTapAndHoldGesture_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QTapAndHoldGesture_virtualbase_event".}
proc fcQTapAndHoldGesture_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QTapAndHoldGesture_virtualbase_eventFilter".}
proc fcQTapAndHoldGesture_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QTapAndHoldGesture_virtualbase_timerEvent".}
proc fcQTapAndHoldGesture_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QTapAndHoldGesture_virtualbase_childEvent".}
proc fcQTapAndHoldGesture_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QTapAndHoldGesture_virtualbase_customEvent".}
proc fcQTapAndHoldGesture_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QTapAndHoldGesture_virtualbase_connectNotify".}
proc fcQTapAndHoldGesture_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QTapAndHoldGesture_virtualbase_disconnectNotify".}
proc fcQTapAndHoldGesture_protectedbase_sender(self: pointer): pointer {.importc: "QTapAndHoldGesture_protectedbase_sender".}
proc fcQTapAndHoldGesture_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QTapAndHoldGesture_protectedbase_senderSignalIndex".}
proc fcQTapAndHoldGesture_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QTapAndHoldGesture_protectedbase_receivers".}
proc fcQTapAndHoldGesture_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QTapAndHoldGesture_protectedbase_isSignalConnected".}
proc fcQTapAndHoldGesture_new(vtbl, vdata: pointer): ptr cQTapAndHoldGesture {.importc: "QTapAndHoldGesture_new".}
proc fcQTapAndHoldGesture_new2(vtbl, vdata: pointer, parent: pointer): ptr cQTapAndHoldGesture {.importc: "QTapAndHoldGesture_new2".}
proc fcQTapAndHoldGesture_staticMetaObject(): pointer {.importc: "QTapAndHoldGesture_staticMetaObject".}
proc fcQGestureEvent_gestures(self: pointer): struct_miqt_array {.importc: "QGestureEvent_gestures".}
proc fcQGestureEvent_gesture(self: pointer, typeVal: cint): pointer {.importc: "QGestureEvent_gesture".}
proc fcQGestureEvent_activeGestures(self: pointer): struct_miqt_array {.importc: "QGestureEvent_activeGestures".}
proc fcQGestureEvent_canceledGestures(self: pointer): struct_miqt_array {.importc: "QGestureEvent_canceledGestures".}
proc fcQGestureEvent_setAccepted(self: pointer, param1: pointer, param2: bool): void {.importc: "QGestureEvent_setAccepted".}
proc fcQGestureEvent_accept(self: pointer, param1: pointer): void {.importc: "QGestureEvent_accept".}
proc fcQGestureEvent_ignore(self: pointer, param1: pointer): void {.importc: "QGestureEvent_ignore".}
proc fcQGestureEvent_isAccepted(self: pointer, param1: pointer): bool {.importc: "QGestureEvent_isAccepted".}
proc fcQGestureEvent_setAccepted2(self: pointer, param1: cint, param2: bool): void {.importc: "QGestureEvent_setAccepted2".}
proc fcQGestureEvent_acceptWithQtGestureType(self: pointer, param1: cint): void {.importc: "QGestureEvent_acceptWithQtGestureType".}
proc fcQGestureEvent_ignoreWithQtGestureType(self: pointer, param1: cint): void {.importc: "QGestureEvent_ignoreWithQtGestureType".}
proc fcQGestureEvent_isAcceptedWithQtGestureType(self: pointer, param1: cint): bool {.importc: "QGestureEvent_isAcceptedWithQtGestureType".}
proc fcQGestureEvent_setWidget(self: pointer, widget: pointer): void {.importc: "QGestureEvent_setWidget".}
proc fcQGestureEvent_widget(self: pointer): pointer {.importc: "QGestureEvent_widget".}
proc fcQGestureEvent_mapToGraphicsScene(self: pointer, gesturePoint: pointer): pointer {.importc: "QGestureEvent_mapToGraphicsScene".}
proc fcQGestureEvent_new(gestures: struct_miqt_array): ptr cQGestureEvent {.importc: "QGestureEvent_new".}
proc fcQGestureEvent_new2(param1: pointer): ptr cQGestureEvent {.importc: "QGestureEvent_new2".}

proc metaObject*(self: gen_qgesture_types.QGesture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGesture_metaObject(self.h), owned: false)

proc metacast*(self: gen_qgesture_types.QGesture, param1: cstring): pointer =
  fcQGesture_metacast(self.h, param1)

proc metacall*(self: gen_qgesture_types.QGesture, param1: cint, param2: cint, param3: pointer): cint =
  fcQGesture_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgesture_types.QGesture, s: cstring): string =
  let v_ms = fcQGesture_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QGesture, s: cstring): string =
  let v_ms = fcQGesture_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc gestureType*(self: gen_qgesture_types.QGesture): cint =
  cint(fcQGesture_gestureType(self.h))

proc state*(self: gen_qgesture_types.QGesture): cint =
  cint(fcQGesture_state(self.h))

proc hotSpot*(self: gen_qgesture_types.QGesture): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGesture_hotSpot(self.h), owned: true)

proc setHotSpot*(self: gen_qgesture_types.QGesture, value: gen_qpoint_types.QPointF): void =
  fcQGesture_setHotSpot(self.h, value.h)

proc hasHotSpot*(self: gen_qgesture_types.QGesture): bool =
  fcQGesture_hasHotSpot(self.h)

proc unsetHotSpot*(self: gen_qgesture_types.QGesture): void =
  fcQGesture_unsetHotSpot(self.h)

proc setGestureCancelPolicy*(self: gen_qgesture_types.QGesture, policy: cint): void =
  fcQGesture_setGestureCancelPolicy(self.h, cint(policy))

proc gestureCancelPolicy*(self: gen_qgesture_types.QGesture): cint =
  cint(fcQGesture_gestureCancelPolicy(self.h))

proc tr*(_: type gen_qgesture_types.QGesture, s: cstring, c: cstring): string =
  let v_ms = fcQGesture_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgesture_types.QGesture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGesture_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QGesture, s: cstring, c: cstring): string =
  let v_ms = fcQGesture_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QGesture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGesture_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QGesturemetaObjectProc* = proc(self: QGesture): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QGesturemetacastProc* = proc(self: QGesture, param1: cstring): pointer {.raises: [], gcsafe.}
type QGesturemetacallProc* = proc(self: QGesture, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QGestureeventProc* = proc(self: QGesture, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGestureeventFilterProc* = proc(self: QGesture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGesturetimerEventProc* = proc(self: QGesture, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QGesturechildEventProc* = proc(self: QGesture, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QGesturecustomEventProc* = proc(self: QGesture, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGestureconnectNotifyProc* = proc(self: QGesture, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGesturedisconnectNotifyProc* = proc(self: QGesture, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QGestureVTable* {.inheritable, pure.} = object
  vtbl: cQGestureVTable
  metaObject*: QGesturemetaObjectProc
  metacast*: QGesturemetacastProc
  metacall*: QGesturemetacallProc
  event*: QGestureeventProc
  eventFilter*: QGestureeventFilterProc
  timerEvent*: QGesturetimerEventProc
  childEvent*: QGesturechildEventProc
  customEvent*: QGesturecustomEventProc
  connectNotify*: QGestureconnectNotifyProc
  disconnectNotify*: QGesturedisconnectNotifyProc

proc QGesturemetaObject*(self: gen_qgesture_types.QGesture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGesture_virtualbase_metaObject(self.h), owned: false)

proc QGesturemetacast*(self: gen_qgesture_types.QGesture, param1: cstring): pointer =
  fcQGesture_virtualbase_metacast(self.h, param1)

proc QGesturemetacall*(self: gen_qgesture_types.QGesture, param1: cint, param2: cint, param3: pointer): cint =
  fcQGesture_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QGestureevent*(self: gen_qgesture_types.QGesture, event: gen_qcoreevent_types.QEvent): bool =
  fcQGesture_virtualbase_event(self.h, event.h)

proc QGestureeventFilter*(self: gen_qgesture_types.QGesture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQGesture_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QGesturetimerEvent*(self: gen_qgesture_types.QGesture, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQGesture_virtualbase_timerEvent(self.h, event.h)

proc QGesturechildEvent*(self: gen_qgesture_types.QGesture, event: gen_qcoreevent_types.QChildEvent): void =
  fcQGesture_virtualbase_childEvent(self.h, event.h)

proc QGesturecustomEvent*(self: gen_qgesture_types.QGesture, event: gen_qcoreevent_types.QEvent): void =
  fcQGesture_virtualbase_customEvent(self.h, event.h)

proc QGestureconnectNotify*(self: gen_qgesture_types.QGesture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGesture_virtualbase_connectNotify(self.h, signal.h)

proc QGesturedisconnectNotify*(self: gen_qgesture_types.QGesture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGesture_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQGesture_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGestureVTable](fcQGesture_vdata(self))
  let self = QGesture(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGesture_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QGestureVTable](fcQGesture_vdata(self))
  let self = QGesture(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQGesture_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGestureVTable](fcQGesture_vdata(self))
  let self = QGesture(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQGesture_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGestureVTable](fcQGesture_vdata(self))
  let self = QGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQGesture_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGestureVTable](fcQGesture_vdata(self))
  let self = QGesture(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQGesture_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGestureVTable](fcQGesture_vdata(self))
  let self = QGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQGesture_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGestureVTable](fcQGesture_vdata(self))
  let self = QGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQGesture_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGestureVTable](fcQGesture_vdata(self))
  let self = QGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQGesture_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGestureVTable](fcQGesture_vdata(self))
  let self = QGesture(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQGesture_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGestureVTable](fcQGesture_vdata(self))
  let self = QGesture(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQGesture* {.inheritable.} = ref object of QGesture
  vtbl*: cQGestureVTable

method metaObject*(self: VirtualQGesture): gen_qobjectdefs_types.QMetaObject {.base.} =
  QGesturemetaObject(self[])
method metacast*(self: VirtualQGesture, param1: cstring): pointer {.base.} =
  QGesturemetacast(self[], param1)
method metacall*(self: VirtualQGesture, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QGesturemetacall(self[], param1, param2, param3)
method event*(self: VirtualQGesture, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGestureevent(self[], event)
method eventFilter*(self: VirtualQGesture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGestureeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQGesture, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QGesturetimerEvent(self[], event)
method childEvent*(self: VirtualQGesture, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QGesturechildEvent(self[], event)
method customEvent*(self: VirtualQGesture, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGesturecustomEvent(self[], event)
method connectNotify*(self: VirtualQGesture, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGestureconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQGesture, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGesturedisconnectNotify(self[], signal)

proc fcQGesture_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGesture](fcQGesture_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQGesture_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQGesture](fcQGesture_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQGesture_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQGesture](fcQGesture_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQGesture_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGesture](fcQGesture_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQGesture_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGesture](fcQGesture_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQGesture_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGesture](fcQGesture_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQGesture_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGesture](fcQGesture_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQGesture_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGesture](fcQGesture_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQGesture_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGesture](fcQGesture_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQGesture_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGesture](fcQGesture_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qgesture_types.QGesture): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGesture_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qgesture_types.QGesture): cint =
  fcQGesture_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qgesture_types.QGesture, signal: cstring): cint =
  fcQGesture_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qgesture_types.QGesture, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQGesture_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qgesture_types.QGesture,
    vtbl: ref QGestureVTable = nil): gen_qgesture_types.QGesture =
  let vtbl = if vtbl == nil: new QGestureVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGestureVTable](fcQGesture_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQGesture_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQGesture_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQGesture_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQGesture_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQGesture_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQGesture_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQGesture_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQGesture_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQGesture_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQGesture_vtable_callback_disconnectNotify
  gen_qgesture_types.QGesture(h: fcQGesture_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qgesture_types.QGesture,
    parent: gen_qobject_types.QObject,
    vtbl: ref QGestureVTable = nil): gen_qgesture_types.QGesture =
  let vtbl = if vtbl == nil: new QGestureVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGestureVTable](fcQGesture_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQGesture_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQGesture_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQGesture_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQGesture_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQGesture_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQGesture_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQGesture_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQGesture_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQGesture_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQGesture_vtable_callback_disconnectNotify
  gen_qgesture_types.QGesture(h: fcQGesture_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQGesture_mvtbl = cQGestureVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQGesture()[])](self.fcQGesture_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQGesture_method_callback_metaObject,
  metacast: fcQGesture_method_callback_metacast,
  metacall: fcQGesture_method_callback_metacall,
  event: fcQGesture_method_callback_event,
  eventFilter: fcQGesture_method_callback_eventFilter,
  timerEvent: fcQGesture_method_callback_timerEvent,
  childEvent: fcQGesture_method_callback_childEvent,
  customEvent: fcQGesture_method_callback_customEvent,
  connectNotify: fcQGesture_method_callback_connectNotify,
  disconnectNotify: fcQGesture_method_callback_disconnectNotify,
)
proc create*(T: type gen_qgesture_types.QGesture,
    inst: VirtualQGesture) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGesture_new(addr(cQGesture_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qgesture_types.QGesture,
    parent: gen_qobject_types.QObject,
    inst: VirtualQGesture) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGesture_new2(addr(cQGesture_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qgesture_types.QGesture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGesture_staticMetaObject())
proc metaObject*(self: gen_qgesture_types.QPanGesture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPanGesture_metaObject(self.h), owned: false)

proc metacast*(self: gen_qgesture_types.QPanGesture, param1: cstring): pointer =
  fcQPanGesture_metacast(self.h, param1)

proc metacall*(self: gen_qgesture_types.QPanGesture, param1: cint, param2: cint, param3: pointer): cint =
  fcQPanGesture_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgesture_types.QPanGesture, s: cstring): string =
  let v_ms = fcQPanGesture_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QPanGesture, s: cstring): string =
  let v_ms = fcQPanGesture_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc lastOffset*(self: gen_qgesture_types.QPanGesture): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQPanGesture_lastOffset(self.h), owned: true)

proc offset*(self: gen_qgesture_types.QPanGesture): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQPanGesture_offset(self.h), owned: true)

proc delta*(self: gen_qgesture_types.QPanGesture): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQPanGesture_delta(self.h), owned: true)

proc acceleration*(self: gen_qgesture_types.QPanGesture): float64 =
  fcQPanGesture_acceleration(self.h)

proc setLastOffset*(self: gen_qgesture_types.QPanGesture, value: gen_qpoint_types.QPointF): void =
  fcQPanGesture_setLastOffset(self.h, value.h)

proc setOffset*(self: gen_qgesture_types.QPanGesture, value: gen_qpoint_types.QPointF): void =
  fcQPanGesture_setOffset(self.h, value.h)

proc setAcceleration*(self: gen_qgesture_types.QPanGesture, value: float64): void =
  fcQPanGesture_setAcceleration(self.h, value)

proc tr*(_: type gen_qgesture_types.QPanGesture, s: cstring, c: cstring): string =
  let v_ms = fcQPanGesture_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgesture_types.QPanGesture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPanGesture_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QPanGesture, s: cstring, c: cstring): string =
  let v_ms = fcQPanGesture_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QPanGesture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPanGesture_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QPanGesturemetaObjectProc* = proc(self: QPanGesture): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QPanGesturemetacastProc* = proc(self: QPanGesture, param1: cstring): pointer {.raises: [], gcsafe.}
type QPanGesturemetacallProc* = proc(self: QPanGesture, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QPanGestureeventProc* = proc(self: QPanGesture, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPanGestureeventFilterProc* = proc(self: QPanGesture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPanGesturetimerEventProc* = proc(self: QPanGesture, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QPanGesturechildEventProc* = proc(self: QPanGesture, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QPanGesturecustomEventProc* = proc(self: QPanGesture, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPanGestureconnectNotifyProc* = proc(self: QPanGesture, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPanGesturedisconnectNotifyProc* = proc(self: QPanGesture, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QPanGestureVTable* {.inheritable, pure.} = object
  vtbl: cQPanGestureVTable
  metaObject*: QPanGesturemetaObjectProc
  metacast*: QPanGesturemetacastProc
  metacall*: QPanGesturemetacallProc
  event*: QPanGestureeventProc
  eventFilter*: QPanGestureeventFilterProc
  timerEvent*: QPanGesturetimerEventProc
  childEvent*: QPanGesturechildEventProc
  customEvent*: QPanGesturecustomEventProc
  connectNotify*: QPanGestureconnectNotifyProc
  disconnectNotify*: QPanGesturedisconnectNotifyProc

proc QPanGesturemetaObject*(self: gen_qgesture_types.QPanGesture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPanGesture_virtualbase_metaObject(self.h), owned: false)

proc QPanGesturemetacast*(self: gen_qgesture_types.QPanGesture, param1: cstring): pointer =
  fcQPanGesture_virtualbase_metacast(self.h, param1)

proc QPanGesturemetacall*(self: gen_qgesture_types.QPanGesture, param1: cint, param2: cint, param3: pointer): cint =
  fcQPanGesture_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QPanGestureevent*(self: gen_qgesture_types.QPanGesture, event: gen_qcoreevent_types.QEvent): bool =
  fcQPanGesture_virtualbase_event(self.h, event.h)

proc QPanGestureeventFilter*(self: gen_qgesture_types.QPanGesture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQPanGesture_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QPanGesturetimerEvent*(self: gen_qgesture_types.QPanGesture, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQPanGesture_virtualbase_timerEvent(self.h, event.h)

proc QPanGesturechildEvent*(self: gen_qgesture_types.QPanGesture, event: gen_qcoreevent_types.QChildEvent): void =
  fcQPanGesture_virtualbase_childEvent(self.h, event.h)

proc QPanGesturecustomEvent*(self: gen_qgesture_types.QPanGesture, event: gen_qcoreevent_types.QEvent): void =
  fcQPanGesture_virtualbase_customEvent(self.h, event.h)

proc QPanGestureconnectNotify*(self: gen_qgesture_types.QPanGesture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPanGesture_virtualbase_connectNotify(self.h, signal.h)

proc QPanGesturedisconnectNotify*(self: gen_qgesture_types.QPanGesture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPanGesture_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQPanGesture_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPanGestureVTable](fcQPanGesture_vdata(self))
  let self = QPanGesture(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPanGesture_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QPanGestureVTable](fcQPanGesture_vdata(self))
  let self = QPanGesture(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQPanGesture_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPanGestureVTable](fcQPanGesture_vdata(self))
  let self = QPanGesture(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPanGesture_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPanGestureVTable](fcQPanGesture_vdata(self))
  let self = QPanGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQPanGesture_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPanGestureVTable](fcQPanGesture_vdata(self))
  let self = QPanGesture(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQPanGesture_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPanGestureVTable](fcQPanGesture_vdata(self))
  let self = QPanGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQPanGesture_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPanGestureVTable](fcQPanGesture_vdata(self))
  let self = QPanGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQPanGesture_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPanGestureVTable](fcQPanGesture_vdata(self))
  let self = QPanGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQPanGesture_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPanGestureVTable](fcQPanGesture_vdata(self))
  let self = QPanGesture(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQPanGesture_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPanGestureVTable](fcQPanGesture_vdata(self))
  let self = QPanGesture(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQPanGesture* {.inheritable.} = ref object of QPanGesture
  vtbl*: cQPanGestureVTable

method metaObject*(self: VirtualQPanGesture): gen_qobjectdefs_types.QMetaObject {.base.} =
  QPanGesturemetaObject(self[])
method metacast*(self: VirtualQPanGesture, param1: cstring): pointer {.base.} =
  QPanGesturemetacast(self[], param1)
method metacall*(self: VirtualQPanGesture, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QPanGesturemetacall(self[], param1, param2, param3)
method event*(self: VirtualQPanGesture, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPanGestureevent(self[], event)
method eventFilter*(self: VirtualQPanGesture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPanGestureeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQPanGesture, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QPanGesturetimerEvent(self[], event)
method childEvent*(self: VirtualQPanGesture, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QPanGesturechildEvent(self[], event)
method customEvent*(self: VirtualQPanGesture, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QPanGesturecustomEvent(self[], event)
method connectNotify*(self: VirtualQPanGesture, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPanGestureconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQPanGesture, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPanGesturedisconnectNotify(self[], signal)

proc fcQPanGesture_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPanGesture](fcQPanGesture_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPanGesture_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQPanGesture](fcQPanGesture_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQPanGesture_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPanGesture](fcQPanGesture_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPanGesture_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPanGesture](fcQPanGesture_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQPanGesture_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPanGesture](fcQPanGesture_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQPanGesture_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPanGesture](fcQPanGesture_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQPanGesture_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPanGesture](fcQPanGesture_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQPanGesture_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPanGesture](fcQPanGesture_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQPanGesture_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPanGesture](fcQPanGesture_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQPanGesture_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPanGesture](fcQPanGesture_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qgesture_types.QPanGesture): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQPanGesture_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qgesture_types.QPanGesture): cint =
  fcQPanGesture_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qgesture_types.QPanGesture, signal: cstring): cint =
  fcQPanGesture_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qgesture_types.QPanGesture, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQPanGesture_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qgesture_types.QPanGesture,
    vtbl: ref QPanGestureVTable = nil): gen_qgesture_types.QPanGesture =
  let vtbl = if vtbl == nil: new QPanGestureVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPanGestureVTable](fcQPanGesture_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQPanGesture_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQPanGesture_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQPanGesture_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQPanGesture_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQPanGesture_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQPanGesture_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQPanGesture_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQPanGesture_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQPanGesture_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQPanGesture_vtable_callback_disconnectNotify
  gen_qgesture_types.QPanGesture(h: fcQPanGesture_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qgesture_types.QPanGesture,
    parent: gen_qobject_types.QObject,
    vtbl: ref QPanGestureVTable = nil): gen_qgesture_types.QPanGesture =
  let vtbl = if vtbl == nil: new QPanGestureVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPanGestureVTable](fcQPanGesture_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQPanGesture_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQPanGesture_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQPanGesture_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQPanGesture_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQPanGesture_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQPanGesture_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQPanGesture_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQPanGesture_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQPanGesture_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQPanGesture_vtable_callback_disconnectNotify
  gen_qgesture_types.QPanGesture(h: fcQPanGesture_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQPanGesture_mvtbl = cQPanGestureVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQPanGesture()[])](self.fcQPanGesture_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQPanGesture_method_callback_metaObject,
  metacast: fcQPanGesture_method_callback_metacast,
  metacall: fcQPanGesture_method_callback_metacall,
  event: fcQPanGesture_method_callback_event,
  eventFilter: fcQPanGesture_method_callback_eventFilter,
  timerEvent: fcQPanGesture_method_callback_timerEvent,
  childEvent: fcQPanGesture_method_callback_childEvent,
  customEvent: fcQPanGesture_method_callback_customEvent,
  connectNotify: fcQPanGesture_method_callback_connectNotify,
  disconnectNotify: fcQPanGesture_method_callback_disconnectNotify,
)
proc create*(T: type gen_qgesture_types.QPanGesture,
    inst: VirtualQPanGesture) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPanGesture_new(addr(cQPanGesture_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qgesture_types.QPanGesture,
    parent: gen_qobject_types.QObject,
    inst: VirtualQPanGesture) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPanGesture_new2(addr(cQPanGesture_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qgesture_types.QPanGesture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPanGesture_staticMetaObject())
proc metaObject*(self: gen_qgesture_types.QPinchGesture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPinchGesture_metaObject(self.h), owned: false)

proc metacast*(self: gen_qgesture_types.QPinchGesture, param1: cstring): pointer =
  fcQPinchGesture_metacast(self.h, param1)

proc metacall*(self: gen_qgesture_types.QPinchGesture, param1: cint, param2: cint, param3: pointer): cint =
  fcQPinchGesture_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgesture_types.QPinchGesture, s: cstring): string =
  let v_ms = fcQPinchGesture_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QPinchGesture, s: cstring): string =
  let v_ms = fcQPinchGesture_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc totalChangeFlags*(self: gen_qgesture_types.QPinchGesture): cint =
  cint(fcQPinchGesture_totalChangeFlags(self.h))

proc setTotalChangeFlags*(self: gen_qgesture_types.QPinchGesture, value: cint): void =
  fcQPinchGesture_setTotalChangeFlags(self.h, cint(value))

proc changeFlags*(self: gen_qgesture_types.QPinchGesture): cint =
  cint(fcQPinchGesture_changeFlags(self.h))

proc setChangeFlags*(self: gen_qgesture_types.QPinchGesture, value: cint): void =
  fcQPinchGesture_setChangeFlags(self.h, cint(value))

proc startCenterPoint*(self: gen_qgesture_types.QPinchGesture): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQPinchGesture_startCenterPoint(self.h), owned: true)

proc lastCenterPoint*(self: gen_qgesture_types.QPinchGesture): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQPinchGesture_lastCenterPoint(self.h), owned: true)

proc centerPoint*(self: gen_qgesture_types.QPinchGesture): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQPinchGesture_centerPoint(self.h), owned: true)

proc setStartCenterPoint*(self: gen_qgesture_types.QPinchGesture, value: gen_qpoint_types.QPointF): void =
  fcQPinchGesture_setStartCenterPoint(self.h, value.h)

proc setLastCenterPoint*(self: gen_qgesture_types.QPinchGesture, value: gen_qpoint_types.QPointF): void =
  fcQPinchGesture_setLastCenterPoint(self.h, value.h)

proc setCenterPoint*(self: gen_qgesture_types.QPinchGesture, value: gen_qpoint_types.QPointF): void =
  fcQPinchGesture_setCenterPoint(self.h, value.h)

proc totalScaleFactor*(self: gen_qgesture_types.QPinchGesture): float64 =
  fcQPinchGesture_totalScaleFactor(self.h)

proc lastScaleFactor*(self: gen_qgesture_types.QPinchGesture): float64 =
  fcQPinchGesture_lastScaleFactor(self.h)

proc scaleFactor*(self: gen_qgesture_types.QPinchGesture): float64 =
  fcQPinchGesture_scaleFactor(self.h)

proc setTotalScaleFactor*(self: gen_qgesture_types.QPinchGesture, value: float64): void =
  fcQPinchGesture_setTotalScaleFactor(self.h, value)

proc setLastScaleFactor*(self: gen_qgesture_types.QPinchGesture, value: float64): void =
  fcQPinchGesture_setLastScaleFactor(self.h, value)

proc setScaleFactor*(self: gen_qgesture_types.QPinchGesture, value: float64): void =
  fcQPinchGesture_setScaleFactor(self.h, value)

proc totalRotationAngle*(self: gen_qgesture_types.QPinchGesture): float64 =
  fcQPinchGesture_totalRotationAngle(self.h)

proc lastRotationAngle*(self: gen_qgesture_types.QPinchGesture): float64 =
  fcQPinchGesture_lastRotationAngle(self.h)

proc rotationAngle*(self: gen_qgesture_types.QPinchGesture): float64 =
  fcQPinchGesture_rotationAngle(self.h)

proc setTotalRotationAngle*(self: gen_qgesture_types.QPinchGesture, value: float64): void =
  fcQPinchGesture_setTotalRotationAngle(self.h, value)

proc setLastRotationAngle*(self: gen_qgesture_types.QPinchGesture, value: float64): void =
  fcQPinchGesture_setLastRotationAngle(self.h, value)

proc setRotationAngle*(self: gen_qgesture_types.QPinchGesture, value: float64): void =
  fcQPinchGesture_setRotationAngle(self.h, value)

proc tr*(_: type gen_qgesture_types.QPinchGesture, s: cstring, c: cstring): string =
  let v_ms = fcQPinchGesture_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgesture_types.QPinchGesture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPinchGesture_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QPinchGesture, s: cstring, c: cstring): string =
  let v_ms = fcQPinchGesture_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QPinchGesture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPinchGesture_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QPinchGesturemetaObjectProc* = proc(self: QPinchGesture): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QPinchGesturemetacastProc* = proc(self: QPinchGesture, param1: cstring): pointer {.raises: [], gcsafe.}
type QPinchGesturemetacallProc* = proc(self: QPinchGesture, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QPinchGestureeventProc* = proc(self: QPinchGesture, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPinchGestureeventFilterProc* = proc(self: QPinchGesture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPinchGesturetimerEventProc* = proc(self: QPinchGesture, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QPinchGesturechildEventProc* = proc(self: QPinchGesture, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QPinchGesturecustomEventProc* = proc(self: QPinchGesture, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPinchGestureconnectNotifyProc* = proc(self: QPinchGesture, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPinchGesturedisconnectNotifyProc* = proc(self: QPinchGesture, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QPinchGestureVTable* {.inheritable, pure.} = object
  vtbl: cQPinchGestureVTable
  metaObject*: QPinchGesturemetaObjectProc
  metacast*: QPinchGesturemetacastProc
  metacall*: QPinchGesturemetacallProc
  event*: QPinchGestureeventProc
  eventFilter*: QPinchGestureeventFilterProc
  timerEvent*: QPinchGesturetimerEventProc
  childEvent*: QPinchGesturechildEventProc
  customEvent*: QPinchGesturecustomEventProc
  connectNotify*: QPinchGestureconnectNotifyProc
  disconnectNotify*: QPinchGesturedisconnectNotifyProc

proc QPinchGesturemetaObject*(self: gen_qgesture_types.QPinchGesture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPinchGesture_virtualbase_metaObject(self.h), owned: false)

proc QPinchGesturemetacast*(self: gen_qgesture_types.QPinchGesture, param1: cstring): pointer =
  fcQPinchGesture_virtualbase_metacast(self.h, param1)

proc QPinchGesturemetacall*(self: gen_qgesture_types.QPinchGesture, param1: cint, param2: cint, param3: pointer): cint =
  fcQPinchGesture_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QPinchGestureevent*(self: gen_qgesture_types.QPinchGesture, event: gen_qcoreevent_types.QEvent): bool =
  fcQPinchGesture_virtualbase_event(self.h, event.h)

proc QPinchGestureeventFilter*(self: gen_qgesture_types.QPinchGesture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQPinchGesture_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QPinchGesturetimerEvent*(self: gen_qgesture_types.QPinchGesture, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQPinchGesture_virtualbase_timerEvent(self.h, event.h)

proc QPinchGesturechildEvent*(self: gen_qgesture_types.QPinchGesture, event: gen_qcoreevent_types.QChildEvent): void =
  fcQPinchGesture_virtualbase_childEvent(self.h, event.h)

proc QPinchGesturecustomEvent*(self: gen_qgesture_types.QPinchGesture, event: gen_qcoreevent_types.QEvent): void =
  fcQPinchGesture_virtualbase_customEvent(self.h, event.h)

proc QPinchGestureconnectNotify*(self: gen_qgesture_types.QPinchGesture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPinchGesture_virtualbase_connectNotify(self.h, signal.h)

proc QPinchGesturedisconnectNotify*(self: gen_qgesture_types.QPinchGesture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPinchGesture_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQPinchGesture_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPinchGestureVTable](fcQPinchGesture_vdata(self))
  let self = QPinchGesture(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPinchGesture_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QPinchGestureVTable](fcQPinchGesture_vdata(self))
  let self = QPinchGesture(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQPinchGesture_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPinchGestureVTable](fcQPinchGesture_vdata(self))
  let self = QPinchGesture(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPinchGesture_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPinchGestureVTable](fcQPinchGesture_vdata(self))
  let self = QPinchGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQPinchGesture_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPinchGestureVTable](fcQPinchGesture_vdata(self))
  let self = QPinchGesture(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQPinchGesture_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPinchGestureVTable](fcQPinchGesture_vdata(self))
  let self = QPinchGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQPinchGesture_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPinchGestureVTable](fcQPinchGesture_vdata(self))
  let self = QPinchGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQPinchGesture_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPinchGestureVTable](fcQPinchGesture_vdata(self))
  let self = QPinchGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQPinchGesture_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPinchGestureVTable](fcQPinchGesture_vdata(self))
  let self = QPinchGesture(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQPinchGesture_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPinchGestureVTable](fcQPinchGesture_vdata(self))
  let self = QPinchGesture(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQPinchGesture* {.inheritable.} = ref object of QPinchGesture
  vtbl*: cQPinchGestureVTable

method metaObject*(self: VirtualQPinchGesture): gen_qobjectdefs_types.QMetaObject {.base.} =
  QPinchGesturemetaObject(self[])
method metacast*(self: VirtualQPinchGesture, param1: cstring): pointer {.base.} =
  QPinchGesturemetacast(self[], param1)
method metacall*(self: VirtualQPinchGesture, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QPinchGesturemetacall(self[], param1, param2, param3)
method event*(self: VirtualQPinchGesture, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPinchGestureevent(self[], event)
method eventFilter*(self: VirtualQPinchGesture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QPinchGestureeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQPinchGesture, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QPinchGesturetimerEvent(self[], event)
method childEvent*(self: VirtualQPinchGesture, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QPinchGesturechildEvent(self[], event)
method customEvent*(self: VirtualQPinchGesture, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QPinchGesturecustomEvent(self[], event)
method connectNotify*(self: VirtualQPinchGesture, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPinchGestureconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQPinchGesture, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QPinchGesturedisconnectNotify(self[], signal)

proc fcQPinchGesture_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQPinchGesture](fcQPinchGesture_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQPinchGesture_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQPinchGesture](fcQPinchGesture_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQPinchGesture_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQPinchGesture](fcQPinchGesture_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQPinchGesture_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPinchGesture](fcQPinchGesture_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQPinchGesture_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQPinchGesture](fcQPinchGesture_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQPinchGesture_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPinchGesture](fcQPinchGesture_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQPinchGesture_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPinchGesture](fcQPinchGesture_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQPinchGesture_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPinchGesture](fcQPinchGesture_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQPinchGesture_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPinchGesture](fcQPinchGesture_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQPinchGesture_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQPinchGesture](fcQPinchGesture_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qgesture_types.QPinchGesture): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQPinchGesture_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qgesture_types.QPinchGesture): cint =
  fcQPinchGesture_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qgesture_types.QPinchGesture, signal: cstring): cint =
  fcQPinchGesture_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qgesture_types.QPinchGesture, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQPinchGesture_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qgesture_types.QPinchGesture,
    vtbl: ref QPinchGestureVTable = nil): gen_qgesture_types.QPinchGesture =
  let vtbl = if vtbl == nil: new QPinchGestureVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPinchGestureVTable](fcQPinchGesture_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQPinchGesture_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQPinchGesture_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQPinchGesture_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQPinchGesture_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQPinchGesture_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQPinchGesture_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQPinchGesture_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQPinchGesture_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQPinchGesture_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQPinchGesture_vtable_callback_disconnectNotify
  gen_qgesture_types.QPinchGesture(h: fcQPinchGesture_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qgesture_types.QPinchGesture,
    parent: gen_qobject_types.QObject,
    vtbl: ref QPinchGestureVTable = nil): gen_qgesture_types.QPinchGesture =
  let vtbl = if vtbl == nil: new QPinchGestureVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QPinchGestureVTable](fcQPinchGesture_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQPinchGesture_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQPinchGesture_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQPinchGesture_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQPinchGesture_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQPinchGesture_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQPinchGesture_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQPinchGesture_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQPinchGesture_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQPinchGesture_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQPinchGesture_vtable_callback_disconnectNotify
  gen_qgesture_types.QPinchGesture(h: fcQPinchGesture_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQPinchGesture_mvtbl = cQPinchGestureVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQPinchGesture()[])](self.fcQPinchGesture_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQPinchGesture_method_callback_metaObject,
  metacast: fcQPinchGesture_method_callback_metacast,
  metacall: fcQPinchGesture_method_callback_metacall,
  event: fcQPinchGesture_method_callback_event,
  eventFilter: fcQPinchGesture_method_callback_eventFilter,
  timerEvent: fcQPinchGesture_method_callback_timerEvent,
  childEvent: fcQPinchGesture_method_callback_childEvent,
  customEvent: fcQPinchGesture_method_callback_customEvent,
  connectNotify: fcQPinchGesture_method_callback_connectNotify,
  disconnectNotify: fcQPinchGesture_method_callback_disconnectNotify,
)
proc create*(T: type gen_qgesture_types.QPinchGesture,
    inst: VirtualQPinchGesture) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPinchGesture_new(addr(cQPinchGesture_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qgesture_types.QPinchGesture,
    parent: gen_qobject_types.QObject,
    inst: VirtualQPinchGesture) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQPinchGesture_new2(addr(cQPinchGesture_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qgesture_types.QPinchGesture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPinchGesture_staticMetaObject())
proc metaObject*(self: gen_qgesture_types.QSwipeGesture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSwipeGesture_metaObject(self.h), owned: false)

proc metacast*(self: gen_qgesture_types.QSwipeGesture, param1: cstring): pointer =
  fcQSwipeGesture_metacast(self.h, param1)

proc metacall*(self: gen_qgesture_types.QSwipeGesture, param1: cint, param2: cint, param3: pointer): cint =
  fcQSwipeGesture_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgesture_types.QSwipeGesture, s: cstring): string =
  let v_ms = fcQSwipeGesture_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QSwipeGesture, s: cstring): string =
  let v_ms = fcQSwipeGesture_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc horizontalDirection*(self: gen_qgesture_types.QSwipeGesture): cint =
  cint(fcQSwipeGesture_horizontalDirection(self.h))

proc verticalDirection*(self: gen_qgesture_types.QSwipeGesture): cint =
  cint(fcQSwipeGesture_verticalDirection(self.h))

proc swipeAngle*(self: gen_qgesture_types.QSwipeGesture): float64 =
  fcQSwipeGesture_swipeAngle(self.h)

proc setSwipeAngle*(self: gen_qgesture_types.QSwipeGesture, value: float64): void =
  fcQSwipeGesture_setSwipeAngle(self.h, value)

proc tr*(_: type gen_qgesture_types.QSwipeGesture, s: cstring, c: cstring): string =
  let v_ms = fcQSwipeGesture_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgesture_types.QSwipeGesture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSwipeGesture_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QSwipeGesture, s: cstring, c: cstring): string =
  let v_ms = fcQSwipeGesture_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QSwipeGesture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSwipeGesture_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QSwipeGesturemetaObjectProc* = proc(self: QSwipeGesture): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QSwipeGesturemetacastProc* = proc(self: QSwipeGesture, param1: cstring): pointer {.raises: [], gcsafe.}
type QSwipeGesturemetacallProc* = proc(self: QSwipeGesture, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QSwipeGestureeventProc* = proc(self: QSwipeGesture, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSwipeGestureeventFilterProc* = proc(self: QSwipeGesture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSwipeGesturetimerEventProc* = proc(self: QSwipeGesture, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QSwipeGesturechildEventProc* = proc(self: QSwipeGesture, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QSwipeGesturecustomEventProc* = proc(self: QSwipeGesture, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSwipeGestureconnectNotifyProc* = proc(self: QSwipeGesture, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSwipeGesturedisconnectNotifyProc* = proc(self: QSwipeGesture, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QSwipeGestureVTable* {.inheritable, pure.} = object
  vtbl: cQSwipeGestureVTable
  metaObject*: QSwipeGesturemetaObjectProc
  metacast*: QSwipeGesturemetacastProc
  metacall*: QSwipeGesturemetacallProc
  event*: QSwipeGestureeventProc
  eventFilter*: QSwipeGestureeventFilterProc
  timerEvent*: QSwipeGesturetimerEventProc
  childEvent*: QSwipeGesturechildEventProc
  customEvent*: QSwipeGesturecustomEventProc
  connectNotify*: QSwipeGestureconnectNotifyProc
  disconnectNotify*: QSwipeGesturedisconnectNotifyProc

proc QSwipeGesturemetaObject*(self: gen_qgesture_types.QSwipeGesture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSwipeGesture_virtualbase_metaObject(self.h), owned: false)

proc QSwipeGesturemetacast*(self: gen_qgesture_types.QSwipeGesture, param1: cstring): pointer =
  fcQSwipeGesture_virtualbase_metacast(self.h, param1)

proc QSwipeGesturemetacall*(self: gen_qgesture_types.QSwipeGesture, param1: cint, param2: cint, param3: pointer): cint =
  fcQSwipeGesture_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QSwipeGestureevent*(self: gen_qgesture_types.QSwipeGesture, event: gen_qcoreevent_types.QEvent): bool =
  fcQSwipeGesture_virtualbase_event(self.h, event.h)

proc QSwipeGestureeventFilter*(self: gen_qgesture_types.QSwipeGesture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSwipeGesture_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QSwipeGesturetimerEvent*(self: gen_qgesture_types.QSwipeGesture, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSwipeGesture_virtualbase_timerEvent(self.h, event.h)

proc QSwipeGesturechildEvent*(self: gen_qgesture_types.QSwipeGesture, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSwipeGesture_virtualbase_childEvent(self.h, event.h)

proc QSwipeGesturecustomEvent*(self: gen_qgesture_types.QSwipeGesture, event: gen_qcoreevent_types.QEvent): void =
  fcQSwipeGesture_virtualbase_customEvent(self.h, event.h)

proc QSwipeGestureconnectNotify*(self: gen_qgesture_types.QSwipeGesture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSwipeGesture_virtualbase_connectNotify(self.h, signal.h)

proc QSwipeGesturedisconnectNotify*(self: gen_qgesture_types.QSwipeGesture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSwipeGesture_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQSwipeGesture_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSwipeGestureVTable](fcQSwipeGesture_vdata(self))
  let self = QSwipeGesture(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSwipeGesture_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSwipeGestureVTable](fcQSwipeGesture_vdata(self))
  let self = QSwipeGesture(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQSwipeGesture_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSwipeGestureVTable](fcQSwipeGesture_vdata(self))
  let self = QSwipeGesture(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSwipeGesture_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSwipeGestureVTable](fcQSwipeGesture_vdata(self))
  let self = QSwipeGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQSwipeGesture_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSwipeGestureVTable](fcQSwipeGesture_vdata(self))
  let self = QSwipeGesture(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQSwipeGesture_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSwipeGestureVTable](fcQSwipeGesture_vdata(self))
  let self = QSwipeGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQSwipeGesture_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSwipeGestureVTable](fcQSwipeGesture_vdata(self))
  let self = QSwipeGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQSwipeGesture_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSwipeGestureVTable](fcQSwipeGesture_vdata(self))
  let self = QSwipeGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQSwipeGesture_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSwipeGestureVTable](fcQSwipeGesture_vdata(self))
  let self = QSwipeGesture(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQSwipeGesture_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSwipeGestureVTable](fcQSwipeGesture_vdata(self))
  let self = QSwipeGesture(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQSwipeGesture* {.inheritable.} = ref object of QSwipeGesture
  vtbl*: cQSwipeGestureVTable

method metaObject*(self: VirtualQSwipeGesture): gen_qobjectdefs_types.QMetaObject {.base.} =
  QSwipeGesturemetaObject(self[])
method metacast*(self: VirtualQSwipeGesture, param1: cstring): pointer {.base.} =
  QSwipeGesturemetacast(self[], param1)
method metacall*(self: VirtualQSwipeGesture, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QSwipeGesturemetacall(self[], param1, param2, param3)
method event*(self: VirtualQSwipeGesture, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSwipeGestureevent(self[], event)
method eventFilter*(self: VirtualQSwipeGesture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSwipeGestureeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQSwipeGesture, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QSwipeGesturetimerEvent(self[], event)
method childEvent*(self: VirtualQSwipeGesture, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QSwipeGesturechildEvent(self[], event)
method customEvent*(self: VirtualQSwipeGesture, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QSwipeGesturecustomEvent(self[], event)
method connectNotify*(self: VirtualQSwipeGesture, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSwipeGestureconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQSwipeGesture, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSwipeGesturedisconnectNotify(self[], signal)

proc fcQSwipeGesture_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSwipeGesture](fcQSwipeGesture_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSwipeGesture_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQSwipeGesture](fcQSwipeGesture_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQSwipeGesture_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSwipeGesture](fcQSwipeGesture_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSwipeGesture_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSwipeGesture](fcQSwipeGesture_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQSwipeGesture_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSwipeGesture](fcQSwipeGesture_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQSwipeGesture_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSwipeGesture](fcQSwipeGesture_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQSwipeGesture_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSwipeGesture](fcQSwipeGesture_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQSwipeGesture_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSwipeGesture](fcQSwipeGesture_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQSwipeGesture_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSwipeGesture](fcQSwipeGesture_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQSwipeGesture_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSwipeGesture](fcQSwipeGesture_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qgesture_types.QSwipeGesture): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSwipeGesture_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qgesture_types.QSwipeGesture): cint =
  fcQSwipeGesture_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qgesture_types.QSwipeGesture, signal: cstring): cint =
  fcQSwipeGesture_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qgesture_types.QSwipeGesture, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQSwipeGesture_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qgesture_types.QSwipeGesture,
    vtbl: ref QSwipeGestureVTable = nil): gen_qgesture_types.QSwipeGesture =
  let vtbl = if vtbl == nil: new QSwipeGestureVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSwipeGestureVTable](fcQSwipeGesture_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSwipeGesture_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSwipeGesture_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSwipeGesture_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSwipeGesture_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSwipeGesture_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSwipeGesture_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSwipeGesture_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSwipeGesture_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSwipeGesture_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSwipeGesture_vtable_callback_disconnectNotify
  gen_qgesture_types.QSwipeGesture(h: fcQSwipeGesture_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qgesture_types.QSwipeGesture,
    parent: gen_qobject_types.QObject,
    vtbl: ref QSwipeGestureVTable = nil): gen_qgesture_types.QSwipeGesture =
  let vtbl = if vtbl == nil: new QSwipeGestureVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSwipeGestureVTable](fcQSwipeGesture_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSwipeGesture_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSwipeGesture_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSwipeGesture_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSwipeGesture_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSwipeGesture_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSwipeGesture_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSwipeGesture_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSwipeGesture_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSwipeGesture_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSwipeGesture_vtable_callback_disconnectNotify
  gen_qgesture_types.QSwipeGesture(h: fcQSwipeGesture_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQSwipeGesture_mvtbl = cQSwipeGestureVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQSwipeGesture()[])](self.fcQSwipeGesture_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQSwipeGesture_method_callback_metaObject,
  metacast: fcQSwipeGesture_method_callback_metacast,
  metacall: fcQSwipeGesture_method_callback_metacall,
  event: fcQSwipeGesture_method_callback_event,
  eventFilter: fcQSwipeGesture_method_callback_eventFilter,
  timerEvent: fcQSwipeGesture_method_callback_timerEvent,
  childEvent: fcQSwipeGesture_method_callback_childEvent,
  customEvent: fcQSwipeGesture_method_callback_customEvent,
  connectNotify: fcQSwipeGesture_method_callback_connectNotify,
  disconnectNotify: fcQSwipeGesture_method_callback_disconnectNotify,
)
proc create*(T: type gen_qgesture_types.QSwipeGesture,
    inst: VirtualQSwipeGesture) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSwipeGesture_new(addr(cQSwipeGesture_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qgesture_types.QSwipeGesture,
    parent: gen_qobject_types.QObject,
    inst: VirtualQSwipeGesture) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSwipeGesture_new2(addr(cQSwipeGesture_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qgesture_types.QSwipeGesture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSwipeGesture_staticMetaObject())
proc metaObject*(self: gen_qgesture_types.QTapGesture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTapGesture_metaObject(self.h), owned: false)

proc metacast*(self: gen_qgesture_types.QTapGesture, param1: cstring): pointer =
  fcQTapGesture_metacast(self.h, param1)

proc metacall*(self: gen_qgesture_types.QTapGesture, param1: cint, param2: cint, param3: pointer): cint =
  fcQTapGesture_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgesture_types.QTapGesture, s: cstring): string =
  let v_ms = fcQTapGesture_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QTapGesture, s: cstring): string =
  let v_ms = fcQTapGesture_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc position*(self: gen_qgesture_types.QTapGesture): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQTapGesture_position(self.h), owned: true)

proc setPosition*(self: gen_qgesture_types.QTapGesture, pos: gen_qpoint_types.QPointF): void =
  fcQTapGesture_setPosition(self.h, pos.h)

proc tr*(_: type gen_qgesture_types.QTapGesture, s: cstring, c: cstring): string =
  let v_ms = fcQTapGesture_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgesture_types.QTapGesture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTapGesture_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QTapGesture, s: cstring, c: cstring): string =
  let v_ms = fcQTapGesture_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QTapGesture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTapGesture_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QTapGesturemetaObjectProc* = proc(self: QTapGesture): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QTapGesturemetacastProc* = proc(self: QTapGesture, param1: cstring): pointer {.raises: [], gcsafe.}
type QTapGesturemetacallProc* = proc(self: QTapGesture, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QTapGestureeventProc* = proc(self: QTapGesture, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTapGestureeventFilterProc* = proc(self: QTapGesture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTapGesturetimerEventProc* = proc(self: QTapGesture, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QTapGesturechildEventProc* = proc(self: QTapGesture, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QTapGesturecustomEventProc* = proc(self: QTapGesture, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTapGestureconnectNotifyProc* = proc(self: QTapGesture, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTapGesturedisconnectNotifyProc* = proc(self: QTapGesture, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QTapGestureVTable* {.inheritable, pure.} = object
  vtbl: cQTapGestureVTable
  metaObject*: QTapGesturemetaObjectProc
  metacast*: QTapGesturemetacastProc
  metacall*: QTapGesturemetacallProc
  event*: QTapGestureeventProc
  eventFilter*: QTapGestureeventFilterProc
  timerEvent*: QTapGesturetimerEventProc
  childEvent*: QTapGesturechildEventProc
  customEvent*: QTapGesturecustomEventProc
  connectNotify*: QTapGestureconnectNotifyProc
  disconnectNotify*: QTapGesturedisconnectNotifyProc

proc QTapGesturemetaObject*(self: gen_qgesture_types.QTapGesture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTapGesture_virtualbase_metaObject(self.h), owned: false)

proc QTapGesturemetacast*(self: gen_qgesture_types.QTapGesture, param1: cstring): pointer =
  fcQTapGesture_virtualbase_metacast(self.h, param1)

proc QTapGesturemetacall*(self: gen_qgesture_types.QTapGesture, param1: cint, param2: cint, param3: pointer): cint =
  fcQTapGesture_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QTapGestureevent*(self: gen_qgesture_types.QTapGesture, event: gen_qcoreevent_types.QEvent): bool =
  fcQTapGesture_virtualbase_event(self.h, event.h)

proc QTapGestureeventFilter*(self: gen_qgesture_types.QTapGesture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQTapGesture_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QTapGesturetimerEvent*(self: gen_qgesture_types.QTapGesture, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQTapGesture_virtualbase_timerEvent(self.h, event.h)

proc QTapGesturechildEvent*(self: gen_qgesture_types.QTapGesture, event: gen_qcoreevent_types.QChildEvent): void =
  fcQTapGesture_virtualbase_childEvent(self.h, event.h)

proc QTapGesturecustomEvent*(self: gen_qgesture_types.QTapGesture, event: gen_qcoreevent_types.QEvent): void =
  fcQTapGesture_virtualbase_customEvent(self.h, event.h)

proc QTapGestureconnectNotify*(self: gen_qgesture_types.QTapGesture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTapGesture_virtualbase_connectNotify(self.h, signal.h)

proc QTapGesturedisconnectNotify*(self: gen_qgesture_types.QTapGesture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTapGesture_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQTapGesture_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTapGestureVTable](fcQTapGesture_vdata(self))
  let self = QTapGesture(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTapGesture_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QTapGestureVTable](fcQTapGesture_vdata(self))
  let self = QTapGesture(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQTapGesture_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTapGestureVTable](fcQTapGesture_vdata(self))
  let self = QTapGesture(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQTapGesture_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTapGestureVTable](fcQTapGesture_vdata(self))
  let self = QTapGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQTapGesture_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTapGestureVTable](fcQTapGesture_vdata(self))
  let self = QTapGesture(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQTapGesture_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTapGestureVTable](fcQTapGesture_vdata(self))
  let self = QTapGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQTapGesture_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTapGestureVTable](fcQTapGesture_vdata(self))
  let self = QTapGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQTapGesture_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTapGestureVTable](fcQTapGesture_vdata(self))
  let self = QTapGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQTapGesture_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTapGestureVTable](fcQTapGesture_vdata(self))
  let self = QTapGesture(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQTapGesture_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTapGestureVTable](fcQTapGesture_vdata(self))
  let self = QTapGesture(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQTapGesture* {.inheritable.} = ref object of QTapGesture
  vtbl*: cQTapGestureVTable

method metaObject*(self: VirtualQTapGesture): gen_qobjectdefs_types.QMetaObject {.base.} =
  QTapGesturemetaObject(self[])
method metacast*(self: VirtualQTapGesture, param1: cstring): pointer {.base.} =
  QTapGesturemetacast(self[], param1)
method metacall*(self: VirtualQTapGesture, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QTapGesturemetacall(self[], param1, param2, param3)
method event*(self: VirtualQTapGesture, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTapGestureevent(self[], event)
method eventFilter*(self: VirtualQTapGesture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTapGestureeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQTapGesture, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QTapGesturetimerEvent(self[], event)
method childEvent*(self: VirtualQTapGesture, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QTapGesturechildEvent(self[], event)
method customEvent*(self: VirtualQTapGesture, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QTapGesturecustomEvent(self[], event)
method connectNotify*(self: VirtualQTapGesture, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTapGestureconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQTapGesture, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTapGesturedisconnectNotify(self[], signal)

proc fcQTapGesture_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTapGesture](fcQTapGesture_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTapGesture_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQTapGesture](fcQTapGesture_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQTapGesture_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQTapGesture](fcQTapGesture_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQTapGesture_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTapGesture](fcQTapGesture_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQTapGesture_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTapGesture](fcQTapGesture_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQTapGesture_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTapGesture](fcQTapGesture_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQTapGesture_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTapGesture](fcQTapGesture_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQTapGesture_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTapGesture](fcQTapGesture_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQTapGesture_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTapGesture](fcQTapGesture_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQTapGesture_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTapGesture](fcQTapGesture_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qgesture_types.QTapGesture): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQTapGesture_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qgesture_types.QTapGesture): cint =
  fcQTapGesture_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qgesture_types.QTapGesture, signal: cstring): cint =
  fcQTapGesture_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qgesture_types.QTapGesture, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQTapGesture_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qgesture_types.QTapGesture,
    vtbl: ref QTapGestureVTable = nil): gen_qgesture_types.QTapGesture =
  let vtbl = if vtbl == nil: new QTapGestureVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTapGestureVTable](fcQTapGesture_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQTapGesture_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQTapGesture_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQTapGesture_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQTapGesture_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQTapGesture_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQTapGesture_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQTapGesture_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQTapGesture_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQTapGesture_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQTapGesture_vtable_callback_disconnectNotify
  gen_qgesture_types.QTapGesture(h: fcQTapGesture_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qgesture_types.QTapGesture,
    parent: gen_qobject_types.QObject,
    vtbl: ref QTapGestureVTable = nil): gen_qgesture_types.QTapGesture =
  let vtbl = if vtbl == nil: new QTapGestureVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTapGestureVTable](fcQTapGesture_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQTapGesture_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQTapGesture_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQTapGesture_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQTapGesture_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQTapGesture_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQTapGesture_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQTapGesture_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQTapGesture_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQTapGesture_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQTapGesture_vtable_callback_disconnectNotify
  gen_qgesture_types.QTapGesture(h: fcQTapGesture_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQTapGesture_mvtbl = cQTapGestureVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQTapGesture()[])](self.fcQTapGesture_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQTapGesture_method_callback_metaObject,
  metacast: fcQTapGesture_method_callback_metacast,
  metacall: fcQTapGesture_method_callback_metacall,
  event: fcQTapGesture_method_callback_event,
  eventFilter: fcQTapGesture_method_callback_eventFilter,
  timerEvent: fcQTapGesture_method_callback_timerEvent,
  childEvent: fcQTapGesture_method_callback_childEvent,
  customEvent: fcQTapGesture_method_callback_customEvent,
  connectNotify: fcQTapGesture_method_callback_connectNotify,
  disconnectNotify: fcQTapGesture_method_callback_disconnectNotify,
)
proc create*(T: type gen_qgesture_types.QTapGesture,
    inst: VirtualQTapGesture) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTapGesture_new(addr(cQTapGesture_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qgesture_types.QTapGesture,
    parent: gen_qobject_types.QObject,
    inst: VirtualQTapGesture) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTapGesture_new2(addr(cQTapGesture_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qgesture_types.QTapGesture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTapGesture_staticMetaObject())
proc metaObject*(self: gen_qgesture_types.QTapAndHoldGesture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTapAndHoldGesture_metaObject(self.h), owned: false)

proc metacast*(self: gen_qgesture_types.QTapAndHoldGesture, param1: cstring): pointer =
  fcQTapAndHoldGesture_metacast(self.h, param1)

proc metacall*(self: gen_qgesture_types.QTapAndHoldGesture, param1: cint, param2: cint, param3: pointer): cint =
  fcQTapAndHoldGesture_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgesture_types.QTapAndHoldGesture, s: cstring): string =
  let v_ms = fcQTapAndHoldGesture_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QTapAndHoldGesture, s: cstring): string =
  let v_ms = fcQTapAndHoldGesture_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc position*(self: gen_qgesture_types.QTapAndHoldGesture): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQTapAndHoldGesture_position(self.h), owned: true)

proc setPosition*(self: gen_qgesture_types.QTapAndHoldGesture, pos: gen_qpoint_types.QPointF): void =
  fcQTapAndHoldGesture_setPosition(self.h, pos.h)

proc setTimeout*(_: type gen_qgesture_types.QTapAndHoldGesture, msecs: cint): void =
  fcQTapAndHoldGesture_setTimeout(msecs)

proc timeout*(_: type gen_qgesture_types.QTapAndHoldGesture): cint =
  fcQTapAndHoldGesture_timeout()

proc tr*(_: type gen_qgesture_types.QTapAndHoldGesture, s: cstring, c: cstring): string =
  let v_ms = fcQTapAndHoldGesture_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgesture_types.QTapAndHoldGesture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTapAndHoldGesture_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QTapAndHoldGesture, s: cstring, c: cstring): string =
  let v_ms = fcQTapAndHoldGesture_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgesture_types.QTapAndHoldGesture, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTapAndHoldGesture_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QTapAndHoldGesturemetaObjectProc* = proc(self: QTapAndHoldGesture): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QTapAndHoldGesturemetacastProc* = proc(self: QTapAndHoldGesture, param1: cstring): pointer {.raises: [], gcsafe.}
type QTapAndHoldGesturemetacallProc* = proc(self: QTapAndHoldGesture, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QTapAndHoldGestureeventProc* = proc(self: QTapAndHoldGesture, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTapAndHoldGestureeventFilterProc* = proc(self: QTapAndHoldGesture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTapAndHoldGesturetimerEventProc* = proc(self: QTapAndHoldGesture, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QTapAndHoldGesturechildEventProc* = proc(self: QTapAndHoldGesture, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QTapAndHoldGesturecustomEventProc* = proc(self: QTapAndHoldGesture, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTapAndHoldGestureconnectNotifyProc* = proc(self: QTapAndHoldGesture, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTapAndHoldGesturedisconnectNotifyProc* = proc(self: QTapAndHoldGesture, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QTapAndHoldGestureVTable* {.inheritable, pure.} = object
  vtbl: cQTapAndHoldGestureVTable
  metaObject*: QTapAndHoldGesturemetaObjectProc
  metacast*: QTapAndHoldGesturemetacastProc
  metacall*: QTapAndHoldGesturemetacallProc
  event*: QTapAndHoldGestureeventProc
  eventFilter*: QTapAndHoldGestureeventFilterProc
  timerEvent*: QTapAndHoldGesturetimerEventProc
  childEvent*: QTapAndHoldGesturechildEventProc
  customEvent*: QTapAndHoldGesturecustomEventProc
  connectNotify*: QTapAndHoldGestureconnectNotifyProc
  disconnectNotify*: QTapAndHoldGesturedisconnectNotifyProc

proc QTapAndHoldGesturemetaObject*(self: gen_qgesture_types.QTapAndHoldGesture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTapAndHoldGesture_virtualbase_metaObject(self.h), owned: false)

proc QTapAndHoldGesturemetacast*(self: gen_qgesture_types.QTapAndHoldGesture, param1: cstring): pointer =
  fcQTapAndHoldGesture_virtualbase_metacast(self.h, param1)

proc QTapAndHoldGesturemetacall*(self: gen_qgesture_types.QTapAndHoldGesture, param1: cint, param2: cint, param3: pointer): cint =
  fcQTapAndHoldGesture_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QTapAndHoldGestureevent*(self: gen_qgesture_types.QTapAndHoldGesture, event: gen_qcoreevent_types.QEvent): bool =
  fcQTapAndHoldGesture_virtualbase_event(self.h, event.h)

proc QTapAndHoldGestureeventFilter*(self: gen_qgesture_types.QTapAndHoldGesture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQTapAndHoldGesture_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QTapAndHoldGesturetimerEvent*(self: gen_qgesture_types.QTapAndHoldGesture, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQTapAndHoldGesture_virtualbase_timerEvent(self.h, event.h)

proc QTapAndHoldGesturechildEvent*(self: gen_qgesture_types.QTapAndHoldGesture, event: gen_qcoreevent_types.QChildEvent): void =
  fcQTapAndHoldGesture_virtualbase_childEvent(self.h, event.h)

proc QTapAndHoldGesturecustomEvent*(self: gen_qgesture_types.QTapAndHoldGesture, event: gen_qcoreevent_types.QEvent): void =
  fcQTapAndHoldGesture_virtualbase_customEvent(self.h, event.h)

proc QTapAndHoldGestureconnectNotify*(self: gen_qgesture_types.QTapAndHoldGesture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTapAndHoldGesture_virtualbase_connectNotify(self.h, signal.h)

proc QTapAndHoldGesturedisconnectNotify*(self: gen_qgesture_types.QTapAndHoldGesture, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTapAndHoldGesture_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQTapAndHoldGesture_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTapAndHoldGestureVTable](fcQTapAndHoldGesture_vdata(self))
  let self = QTapAndHoldGesture(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTapAndHoldGesture_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QTapAndHoldGestureVTable](fcQTapAndHoldGesture_vdata(self))
  let self = QTapAndHoldGesture(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQTapAndHoldGesture_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTapAndHoldGestureVTable](fcQTapAndHoldGesture_vdata(self))
  let self = QTapAndHoldGesture(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQTapAndHoldGesture_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTapAndHoldGestureVTable](fcQTapAndHoldGesture_vdata(self))
  let self = QTapAndHoldGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQTapAndHoldGesture_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTapAndHoldGestureVTable](fcQTapAndHoldGesture_vdata(self))
  let self = QTapAndHoldGesture(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQTapAndHoldGesture_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTapAndHoldGestureVTable](fcQTapAndHoldGesture_vdata(self))
  let self = QTapAndHoldGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQTapAndHoldGesture_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTapAndHoldGestureVTable](fcQTapAndHoldGesture_vdata(self))
  let self = QTapAndHoldGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQTapAndHoldGesture_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTapAndHoldGestureVTable](fcQTapAndHoldGesture_vdata(self))
  let self = QTapAndHoldGesture(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQTapAndHoldGesture_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTapAndHoldGestureVTable](fcQTapAndHoldGesture_vdata(self))
  let self = QTapAndHoldGesture(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQTapAndHoldGesture_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTapAndHoldGestureVTable](fcQTapAndHoldGesture_vdata(self))
  let self = QTapAndHoldGesture(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQTapAndHoldGesture* {.inheritable.} = ref object of QTapAndHoldGesture
  vtbl*: cQTapAndHoldGestureVTable

method metaObject*(self: VirtualQTapAndHoldGesture): gen_qobjectdefs_types.QMetaObject {.base.} =
  QTapAndHoldGesturemetaObject(self[])
method metacast*(self: VirtualQTapAndHoldGesture, param1: cstring): pointer {.base.} =
  QTapAndHoldGesturemetacast(self[], param1)
method metacall*(self: VirtualQTapAndHoldGesture, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QTapAndHoldGesturemetacall(self[], param1, param2, param3)
method event*(self: VirtualQTapAndHoldGesture, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTapAndHoldGestureevent(self[], event)
method eventFilter*(self: VirtualQTapAndHoldGesture, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTapAndHoldGestureeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQTapAndHoldGesture, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QTapAndHoldGesturetimerEvent(self[], event)
method childEvent*(self: VirtualQTapAndHoldGesture, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QTapAndHoldGesturechildEvent(self[], event)
method customEvent*(self: VirtualQTapAndHoldGesture, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QTapAndHoldGesturecustomEvent(self[], event)
method connectNotify*(self: VirtualQTapAndHoldGesture, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTapAndHoldGestureconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQTapAndHoldGesture, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTapAndHoldGesturedisconnectNotify(self[], signal)

proc fcQTapAndHoldGesture_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTapAndHoldGesture](fcQTapAndHoldGesture_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQTapAndHoldGesture_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQTapAndHoldGesture](fcQTapAndHoldGesture_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQTapAndHoldGesture_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQTapAndHoldGesture](fcQTapAndHoldGesture_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQTapAndHoldGesture_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTapAndHoldGesture](fcQTapAndHoldGesture_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQTapAndHoldGesture_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTapAndHoldGesture](fcQTapAndHoldGesture_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQTapAndHoldGesture_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTapAndHoldGesture](fcQTapAndHoldGesture_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQTapAndHoldGesture_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTapAndHoldGesture](fcQTapAndHoldGesture_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQTapAndHoldGesture_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTapAndHoldGesture](fcQTapAndHoldGesture_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQTapAndHoldGesture_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTapAndHoldGesture](fcQTapAndHoldGesture_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQTapAndHoldGesture_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTapAndHoldGesture](fcQTapAndHoldGesture_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qgesture_types.QTapAndHoldGesture): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQTapAndHoldGesture_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qgesture_types.QTapAndHoldGesture): cint =
  fcQTapAndHoldGesture_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qgesture_types.QTapAndHoldGesture, signal: cstring): cint =
  fcQTapAndHoldGesture_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qgesture_types.QTapAndHoldGesture, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQTapAndHoldGesture_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qgesture_types.QTapAndHoldGesture,
    vtbl: ref QTapAndHoldGestureVTable = nil): gen_qgesture_types.QTapAndHoldGesture =
  let vtbl = if vtbl == nil: new QTapAndHoldGestureVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTapAndHoldGestureVTable](fcQTapAndHoldGesture_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQTapAndHoldGesture_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQTapAndHoldGesture_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQTapAndHoldGesture_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQTapAndHoldGesture_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQTapAndHoldGesture_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQTapAndHoldGesture_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQTapAndHoldGesture_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQTapAndHoldGesture_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQTapAndHoldGesture_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQTapAndHoldGesture_vtable_callback_disconnectNotify
  gen_qgesture_types.QTapAndHoldGesture(h: fcQTapAndHoldGesture_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qgesture_types.QTapAndHoldGesture,
    parent: gen_qobject_types.QObject,
    vtbl: ref QTapAndHoldGestureVTable = nil): gen_qgesture_types.QTapAndHoldGesture =
  let vtbl = if vtbl == nil: new QTapAndHoldGestureVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTapAndHoldGestureVTable](fcQTapAndHoldGesture_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQTapAndHoldGesture_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQTapAndHoldGesture_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQTapAndHoldGesture_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQTapAndHoldGesture_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQTapAndHoldGesture_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQTapAndHoldGesture_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQTapAndHoldGesture_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQTapAndHoldGesture_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQTapAndHoldGesture_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQTapAndHoldGesture_vtable_callback_disconnectNotify
  gen_qgesture_types.QTapAndHoldGesture(h: fcQTapAndHoldGesture_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQTapAndHoldGesture_mvtbl = cQTapAndHoldGestureVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQTapAndHoldGesture()[])](self.fcQTapAndHoldGesture_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQTapAndHoldGesture_method_callback_metaObject,
  metacast: fcQTapAndHoldGesture_method_callback_metacast,
  metacall: fcQTapAndHoldGesture_method_callback_metacall,
  event: fcQTapAndHoldGesture_method_callback_event,
  eventFilter: fcQTapAndHoldGesture_method_callback_eventFilter,
  timerEvent: fcQTapAndHoldGesture_method_callback_timerEvent,
  childEvent: fcQTapAndHoldGesture_method_callback_childEvent,
  customEvent: fcQTapAndHoldGesture_method_callback_customEvent,
  connectNotify: fcQTapAndHoldGesture_method_callback_connectNotify,
  disconnectNotify: fcQTapAndHoldGesture_method_callback_disconnectNotify,
)
proc create*(T: type gen_qgesture_types.QTapAndHoldGesture,
    inst: VirtualQTapAndHoldGesture) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTapAndHoldGesture_new(addr(cQTapAndHoldGesture_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qgesture_types.QTapAndHoldGesture,
    parent: gen_qobject_types.QObject,
    inst: VirtualQTapAndHoldGesture) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTapAndHoldGesture_new2(addr(cQTapAndHoldGesture_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qgesture_types.QTapAndHoldGesture): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTapAndHoldGesture_staticMetaObject())
proc gestures*(self: gen_qgesture_types.QGestureEvent): seq[gen_qgesture_types.QGesture] =
  var v_ma = fcQGestureEvent_gestures(self.h)
  var vx_ret = newSeq[gen_qgesture_types.QGesture](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgesture_types.QGesture(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc gesture*(self: gen_qgesture_types.QGestureEvent, typeVal: cint): gen_qgesture_types.QGesture =
  gen_qgesture_types.QGesture(h: fcQGestureEvent_gesture(self.h, cint(typeVal)), owned: false)

proc activeGestures*(self: gen_qgesture_types.QGestureEvent): seq[gen_qgesture_types.QGesture] =
  var v_ma = fcQGestureEvent_activeGestures(self.h)
  var vx_ret = newSeq[gen_qgesture_types.QGesture](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgesture_types.QGesture(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc canceledGestures*(self: gen_qgesture_types.QGestureEvent): seq[gen_qgesture_types.QGesture] =
  var v_ma = fcQGestureEvent_canceledGestures(self.h)
  var vx_ret = newSeq[gen_qgesture_types.QGesture](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qgesture_types.QGesture(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc setAccepted*(self: gen_qgesture_types.QGestureEvent, param1: gen_qgesture_types.QGesture, param2: bool): void =
  fcQGestureEvent_setAccepted(self.h, param1.h, param2)

proc accept*(self: gen_qgesture_types.QGestureEvent, param1: gen_qgesture_types.QGesture): void =
  fcQGestureEvent_accept(self.h, param1.h)

proc ignore*(self: gen_qgesture_types.QGestureEvent, param1: gen_qgesture_types.QGesture): void =
  fcQGestureEvent_ignore(self.h, param1.h)

proc isAccepted*(self: gen_qgesture_types.QGestureEvent, param1: gen_qgesture_types.QGesture): bool =
  fcQGestureEvent_isAccepted(self.h, param1.h)

proc setAccepted*(self: gen_qgesture_types.QGestureEvent, param1: cint, param2: bool): void =
  fcQGestureEvent_setAccepted2(self.h, cint(param1), param2)

proc accept*(self: gen_qgesture_types.QGestureEvent, param1: cint): void =
  fcQGestureEvent_acceptWithQtGestureType(self.h, cint(param1))

proc ignore*(self: gen_qgesture_types.QGestureEvent, param1: cint): void =
  fcQGestureEvent_ignoreWithQtGestureType(self.h, cint(param1))

proc isAccepted*(self: gen_qgesture_types.QGestureEvent, param1: cint): bool =
  fcQGestureEvent_isAcceptedWithQtGestureType(self.h, cint(param1))

proc setWidget*(self: gen_qgesture_types.QGestureEvent, widget: gen_qwidget_types.QWidget): void =
  fcQGestureEvent_setWidget(self.h, widget.h)

proc widget*(self: gen_qgesture_types.QGestureEvent): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQGestureEvent_widget(self.h), owned: false)

proc mapToGraphicsScene*(self: gen_qgesture_types.QGestureEvent, gesturePoint: gen_qpoint_types.QPointF): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQGestureEvent_mapToGraphicsScene(self.h, gesturePoint.h), owned: true)

proc create*(T: type gen_qgesture_types.QGestureEvent,
    gestures: openArray[gen_qgesture_types.QGesture]): gen_qgesture_types.QGestureEvent =
  var gestures_CArray = newSeq[pointer](len(gestures))
  for i in 0..<len(gestures):
    gestures_CArray[i] = gestures[i].h

  gen_qgesture_types.QGestureEvent(h: fcQGestureEvent_new(struct_miqt_array(len: csize_t(len(gestures)), data: if len(gestures) == 0: nil else: addr(gestures_CArray[0]))), owned: true)

proc create*(T: type gen_qgesture_types.QGestureEvent,
    param1: gen_qgesture_types.QGestureEvent): gen_qgesture_types.QGestureEvent =
  gen_qgesture_types.QGestureEvent(h: fcQGestureEvent_new2(param1.h), owned: true)

